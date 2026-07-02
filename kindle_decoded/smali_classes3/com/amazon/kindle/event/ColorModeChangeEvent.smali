.class public Lcom/amazon/kindle/event/ColorModeChangeEvent;
.super Ljava/lang/Object;
.source "ColorModeChangeEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/event/ColorModeChangeEvent;->colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-void
.end method


# virtual methods
.method public getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/event/ColorModeChangeEvent;->colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
