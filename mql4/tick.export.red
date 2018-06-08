Red [
    Title: "tick.export.red"
]

Article: [

    Title: {tick.export}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/mql4/tick.export.red](https://github.com/lepinekong/mycodesnippets/blob/master/mql4/tick.export.red)
        }
        .Published-Url: http://mycodesnippets.space/mql4/tick.export
    ]   

    MQL4: [
        .title: {Code}
        .image: https://i.imgur.com/UuWqkZf.png
        .code/c: {
//+--------------------------------------------------------+
//|      adapted for FILE_SHARE_READ from BP-Ticks-1.0.mq4 |
//+--------------------------------------------------------+
// see https://gist.github.com/lepinekong/9a53459b05ac5ed999883eb4a3cb6488
// File identificator
int file;
uint startTick;
uint tickTime;

datetime theTime;
string strTickDate;
string strTickSecond;

string separator = ",";

// Tick count for flushing each 1024 ticks

int flushCount = 0;
int flushCountLimit = 32; // you can experiment with 1024

int init() {

    startTick=GetTickCount();
    file = FileOpen(Symbol() + "-Ticks.csv",
        FILE_WRITE | FILE_READ | FILE_CSV | FILE_SHARE_READ, separator);   

    return(0);
}

int deinit() {
    FileClose(file);
    return(0);
}

int start() {
    //    - Date & time with seconds info
    //    - Bid
    //    - Ask
    //    - Volume indicator for the selected timeframe
    tickTime=GetTickCount()- startTick;
    theTime=TimeCurrent();
    strTickDate=TimeToStr(theTime,TIME_DATE);
    strTickSecond=TimeToStr(theTime,TIME_SECONDS);
    FileWrite(file, 
            strTickDate, strTickSecond,
            "" + tickTime,
            Bid, 
            Ask, 
            iVolume(Symbol(), NULL, 0));
    flushCount++;

    // Flush file buffer each 1024 ticks to enhance performance
    //    when writing huge files
    if (flushCount == flushCountLimit) {
        FileFlush(file);
        flushCount = 0;
    }

    return(0);
}            
        }
    ] 


    
]

do read http://readablehumanformat.com/lib.red
markdown-gen 