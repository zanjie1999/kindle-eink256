.class public Lcom/amazon/kcp/reader/share/ShareableInformation;
.super Ljava/lang/Object;
.source "ShareableInformation.java"


# instance fields
.field public asin:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public authorWrapper:Ljava/lang/String;

.field public bookUrl:Ljava/lang/String;

.field public imageUri:Landroid/net/Uri;

.field public shortUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/amazon/kcp/reader/share/ShareableInformation;->title:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/amazon/kcp/reader/share/ShareableInformation;->asin:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/amazon/kcp/reader/share/ShareableInformation;->author:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/amazon/kcp/reader/share/ShareableInformation;->authorWrapper:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/amazon/kcp/reader/share/ShareableInformation;->shortUrl:Ljava/lang/String;

    return-void
.end method
