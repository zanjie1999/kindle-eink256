.class public Lcom/amazon/kedu/ftue/assets/ExtractedAsset;
.super Lcom/amazon/kedu/ftue/assets/Asset;
.source "ExtractedAsset.java"


# static fields
.field private static final PATH:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "extracted"

    .line 24
    invoke-direct {p0, v0, p1}, Lcom/amazon/kedu/ftue/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuilder()Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/kedu/ftue/assets/ExtractedAsset$1;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/assets/ExtractedAsset$1;-><init>()V

    return-object v0
.end method
