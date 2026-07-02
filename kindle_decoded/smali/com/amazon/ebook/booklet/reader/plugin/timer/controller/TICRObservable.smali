.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;
.super Ljava/util/Observable;
.source "TICRObservable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public allowNotifications()V
    .locals 0

    .line 20
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method
