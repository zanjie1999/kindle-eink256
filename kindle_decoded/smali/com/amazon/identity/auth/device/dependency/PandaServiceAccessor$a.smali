.class public final Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final hN:Lorg/json/JSONObject;

.field private final hO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResponseCode:I


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->mResponseCode:I

    .line 250
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->hN:Lorg/json/JSONObject;

    .line 251
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->hO:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bF()Lorg/json/JSONObject;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->hN:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bG()Ljava/util/Date;
    .locals 5

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->hO:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "Cache-Control"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->hO:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 270
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 272
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "max-age="

    .line 273
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 278
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xd

    .line 279
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "Cache-Control header has malformed value: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->mResponseCode:I

    return v0
.end method
