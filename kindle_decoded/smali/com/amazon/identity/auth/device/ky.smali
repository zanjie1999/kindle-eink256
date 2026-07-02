.class public Lcom/amazon/identity/auth/device/ky;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ky"


# instance fields
.field private a:Ljava/lang/String;

.field private bM:Ljava/lang/String;

.field private di:Ljava/lang/String;

.field private dj:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private mP:Ljava/lang/String;

.field private sC:Ljava/lang/String;

.field private ss:I

.field private su:Ljava/lang/String;

.field private sv:Ljava/lang/String;

.field private sy:Ljava/lang/String;

.field private tA:Lorg/json/JSONArray;

.field private tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private tC:Ljava/lang/String;

.field private tr:Ljava/lang/String;

.field private ts:Ljava/lang/String;

.field private tt:Ljava/lang/String;

.field private tu:Ljava/lang/String;

.field private tv:Lcom/amazon/identity/auth/device/kx;

.field private tw:Lcom/amazon/identity/auth/device/jz;

.field private tx:Ljava/lang/String;

.field private ty:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/kb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/kx;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v11, p1

    move-object v12, p2

    .line 117
    invoke-direct/range {v0 .. v12}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/kx;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/kx;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ky;-><init>(Lcom/amazon/identity/auth/device/kx;B)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/kx;B)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/kx;",
            "B)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v12, p1

    .line 160
    invoke-direct/range {v0 .. v12}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/kx;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tA:Lorg/json/JSONArray;

    .line 88
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->tC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/kx;)V
    .locals 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    .line 99
    invoke-direct/range {v0 .. v12}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/kx;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/kx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/jz;",
            "Lcom/amazon/identity/auth/device/kx;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tA:Lorg/json/JSONArray;

    .line 190
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->a:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ky;->mP:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ky;->mAccessToken:Ljava/lang/String;

    .line 193
    iput p4, p0, Lcom/amazon/identity/auth/device/ky;->ss:I

    .line 194
    iput-object p5, p0, Lcom/amazon/identity/auth/device/ky;->sC:Ljava/lang/String;

    .line 195
    iput-object p6, p0, Lcom/amazon/identity/auth/device/ky;->tr:Ljava/lang/String;

    .line 196
    iput-object p7, p0, Lcom/amazon/identity/auth/device/ky;->ts:Ljava/lang/String;

    .line 197
    iput-object p8, p0, Lcom/amazon/identity/auth/device/ky;->tt:Ljava/lang/String;

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->tz:Ljava/util/List;

    .line 199
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->tB:Ljava/util/Map;

    .line 200
    iput-object p9, p0, Lcom/amazon/identity/auth/device/ky;->tu:Ljava/lang/String;

    .line 201
    iput-object p10, p0, Lcom/amazon/identity/auth/device/ky;->bM:Ljava/lang/String;

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->ty:Ljava/util/Map;

    .line 203
    iput-object p11, p0, Lcom/amazon/identity/auth/device/ky;->tw:Lcom/amazon/identity/auth/device/jz;

    .line 204
    iput-object p12, p0, Lcom/amazon/identity/auth/device/ky;->tv:Lcom/amazon/identity/auth/device/kx;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 83
    invoke-direct/range {v0 .. v12}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/kx;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tr:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->tu:Ljava/lang/String;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->ts:Ljava/lang/String;

    return-void
.end method

.method c(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/amazon/identity/auth/device/ky;->ss:I

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->tt:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->tA:Lorg/json/JSONArray;

    return-void
.end method

.method public ca()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->sv:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->sC:Ljava/lang/String;

    return-void
.end method

.method public er(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->su:Ljava/lang/String;

    return-void
.end method

.method public fY()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->mP:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->ty:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->sC:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->bM:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tu:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->ts:Ljava/lang/String;

    return-object v0
.end method

.method public hN()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hO()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/amazon/identity/auth/device/ky;->ss:I

    return v0
.end method

.method public hP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/kb;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tz:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hQ()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public hR()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->su:Ljava/lang/String;

    return-object v0
.end method

.method public hS()Lcom/amazon/identity/auth/device/kx;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tv:Lcom/amazon/identity/auth/device/kx;

    return-object v0
.end method

.method public hT()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->di:Ljava/lang/String;

    return-object v0
.end method

.method public hU()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tx:Ljava/lang/String;

    return-object v0
.end method

.method public hV()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->dj:Ljava/lang/String;

    return-object v0
.end method

.method public hW()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->sy:Ljava/lang/String;

    return-object v0
.end method

.method public hX()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ky;->tB:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public hY()Lorg/json/JSONArray;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tA:Lorg/json/JSONArray;

    return-object v0
.end method

.method public hZ()Lcom/amazon/identity/auth/device/jz;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tw:Lcom/amazon/identity/auth/device/jz;

    return-object v0
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tC:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->sv:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->sy:Ljava/lang/String;

    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->di:Ljava/lang/String;

    return-void
.end method

.method m(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->tx:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/kb;",
            ">;)V"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method n(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->dj:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 422
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ky;->tB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public o(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->ty:Ljava/util/Map;

    return-void
.end method

.method p(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method q(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->mP:Ljava/lang/String;

    return-void
.end method

.method setDirectedId(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ky;->bM:Ljava/lang/String;

    return-void
.end method
