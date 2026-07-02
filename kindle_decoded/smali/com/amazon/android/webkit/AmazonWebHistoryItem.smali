.class public Lcom/amazon/android/webkit/AmazonWebHistoryItem;
.super Ljava/lang/Object;
.source "AmazonWebHistoryItem.java"


# instance fields
.field private final favicon:Landroid/graphics/Bitmap;

.field private final flattenedData:[B

.field private final id:I

.field private final originalUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "avoid copying flattenedData for efficiency"
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->favicon:Landroid/graphics/Bitmap;

    .line 38
    iput p2, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->id:I

    .line 39
    iput-object p3, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->originalUrl:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->title:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->url:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->flattenedData:[B

    return-void
.end method


# virtual methods
.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->favicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFlattenedBytes()[B
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "avoid copying flattenedData for efficiency"
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->flattenedData:[B

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->id:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebHistoryItem;->url:Ljava/lang/String;

    return-object v0
.end method
