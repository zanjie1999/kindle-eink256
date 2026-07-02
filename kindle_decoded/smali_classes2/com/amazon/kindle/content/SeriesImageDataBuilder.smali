.class public Lcom/amazon/kindle/content/SeriesImageDataBuilder;
.super Ljava/lang/Object;
.source "SeriesImageDataBuilder.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->extension:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25
    new-instance v2, Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SeriesImageDataBuilder is in an invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->extension:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->id:Ljava/lang/String;

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->extension:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->extension:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->id:Ljava/lang/String;

    return-void
.end method
