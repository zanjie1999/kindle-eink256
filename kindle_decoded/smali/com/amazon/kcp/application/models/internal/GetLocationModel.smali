.class public Lcom/amazon/kcp/application/models/internal/GetLocationModel;
.super Ljava/lang/Object;
.source "GetLocationModel.java"


# instance fields
.field private annotationTime:J

.field private asin:Ljava/lang/String;

.field private bookType:Lcom/amazon/kcp/library/models/BookType;

.field private country:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private hasBeenPopulated:Z

.field private lto:I

.field private message:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private position:I

.field private sourceDevice:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->version:I

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->asin:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->guid:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->bookType:Lcom/amazon/kcp/library/models/BookType;

    return-void
.end method


# virtual methods
.method public getAnnotationTime()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->annotationTime:J

    return-wide v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->bookType:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getLto()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->lto:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->position:I

    return v0
.end method

.method public getSourceDevice()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->sourceDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->version:I

    return v0
.end method

.method public hasBeenPopulated()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return v0
.end method

.method public setAnnotationTime(J)V
    .locals 0

    .line 186
    iput-wide p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->annotationTime:J

    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->country:Ljava/lang/String;

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return-void
.end method

.method public setLto(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->lto:I

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->message:Ljava/lang/String;

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->method:Ljava/lang/String;

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->position:I

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return-void
.end method

.method public setSourceDevice(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->sourceDevice:Ljava/lang/String;

    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->version:I

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated:Z

    return-void
.end method
