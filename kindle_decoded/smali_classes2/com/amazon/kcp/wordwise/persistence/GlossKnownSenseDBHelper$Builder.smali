.class public Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;
.super Ljava/lang/Object;
.source "GlossKnownSenseDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseKnownSenseFileName()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    return-object v1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sdk"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method
