.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "ResponseHeaderOverrides.java"


# static fields
.field private static final PARAMETER_ORDER:[Ljava/lang/String;


# instance fields
.field private cacheControl:Ljava/lang/String;

.field private contentDisposition:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLanguage:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expires:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "response-cache-control"

    const-string v1, "response-content-disposition"

    const-string v2, "response-content-encoding"

    const-string v3, "response-content-language"

    const-string v4, "response-content-type"

    const-string v5, "response-expires"

    .line 68
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->PARAMETER_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->expires:Ljava/lang/String;

    return-object v0
.end method
