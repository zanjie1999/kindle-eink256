.class public abstract Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
.super Ljava/lang/Object;
.source "KRXDownloadTriggerSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$READER;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$STORE;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$APP_STARTUP;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$ONE_TAP;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TODO;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$PLUGIN;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DEBUG;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$NETWORK;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TEST;,
        Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;
    }
.end annotation


# instance fields
.field private final componentArea:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;->componentArea:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getComponentArea()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;->componentArea:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricAttribute()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;->componentArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
