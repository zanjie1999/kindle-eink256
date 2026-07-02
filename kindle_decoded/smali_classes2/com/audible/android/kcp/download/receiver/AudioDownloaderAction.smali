.class public final enum Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;
.super Ljava/lang/Enum;
.source "AudioDownloaderAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

.field public static final enum CANCEL_DOWNLOAD:Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

.field private static final CLASS_NAME:Ljava/lang/String;

.field public static final enum DOWNLOAD:Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    const/4 v1, 0x0

    const-string v2, "DOWNLOAD"

    invoke-direct {v0, v2, v1, v2}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->DOWNLOAD:Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    new-instance v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    const/4 v2, 0x1

    const-string v3, "CANCEL_DOWNLOAD"

    invoke-direct {v0, v3, v2, v3}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->CANCEL_DOWNLOAD:Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    .line 13
    sget-object v4, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->DOWNLOAD:Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->$VALUES:[Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    .line 16
    const-class v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static fromActionString(Landroid/content/Context;Ljava/lang/String;)Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;
    .locals 7

    .line 28
    invoke-static {}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->values()[Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 29
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "********** Action String: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3, p0}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;
    .locals 1

    .line 13
    const-class v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;
    .locals 1

    .line 13
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->$VALUES:[Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    return-object v0
.end method


# virtual methods
.method public getActionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->mIntentAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->CLASS_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->mAction:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/audible/android/kcp/util/IntentUtil;->buildIntentAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->mIntentAction:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->mIntentAction:Ljava/lang/String;

    return-object p1
.end method
