.class public Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;
.super Ljava/lang/Object;
.source "SeriesResponseHandlerFactory.java"


# instance fields
.field private clockService:Lcom/amazon/sitb/android/services/ClockService;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private parser:Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;Lcom/amazon/sitb/android/services/ClockService;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 22
    iput-object p2, p0, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;->parser:Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;

    .line 23
    iput-object p3, p0, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    return-void
.end method


# virtual methods
.method public createResponseHandler(Ljava/lang/String;Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;)Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;
    .locals 7

    .line 27
    new-instance v6, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;

    iget-object v3, p0, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    iget-object v4, p0, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;->parser:Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;

    iget-object v5, p0, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;Lcom/amazon/sitb/android/services/ClockService;)V

    return-object v6
.end method
