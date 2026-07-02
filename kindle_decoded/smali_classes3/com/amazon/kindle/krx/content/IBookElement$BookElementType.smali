.class public final Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;
.super Ljava/lang/Object;
.source "IBookElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/IBookElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookElementType"
.end annotation


# static fields
.field public static final ALL:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

.field public static final AUDIO:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

.field public static final IMAGE:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

.field public static final TABLE:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

.field public static final TEXT:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

.field public static final UNKNOWN:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

.field public static final VIDEO:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    const-string v1, "text"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->TEXT:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    const-string v1, "image"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->IMAGE:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 34
    new-instance v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    const-string v1, "table"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->TABLE:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    const-string v1, "audio"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->AUDIO:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 42
    new-instance v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    const-string v1, "video"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->VIDEO:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 46
    new-instance v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    const-string v1, "unknown"

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->UNKNOWN:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 50
    new-instance v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    const-string v1, "all"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->ALL:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p2, p0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->id:I

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 85
    instance-of v0, p1, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 88
    iget p1, p1, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->id:I

    iget v0, p0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->id:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->id:I

    return v0
.end method
