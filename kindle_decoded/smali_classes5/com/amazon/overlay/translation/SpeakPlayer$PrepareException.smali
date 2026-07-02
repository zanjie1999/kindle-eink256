.class public Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException;
.super Ljava/lang/Exception;
.source "SpeakPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/overlay/translation/SpeakPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrepareException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/overlay/translation/SpeakPlayer$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
