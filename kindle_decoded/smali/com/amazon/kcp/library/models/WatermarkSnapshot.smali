.class public Lcom/amazon/kcp/library/models/WatermarkSnapshot;
.super Ljava/lang/Object;
.source "WatermarkSnapshot.java"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final type:Lcom/amazon/kcp/library/models/BookType;

.field private final watermark:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p3, p0, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->asin:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->watermark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->type:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->watermark:Ljava/lang/String;

    return-object v0
.end method
