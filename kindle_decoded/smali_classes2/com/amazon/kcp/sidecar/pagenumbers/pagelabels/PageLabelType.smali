.class public final Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;
.super Ljava/lang/Object;
.source "PageLabelType.java"


# static fields
.field public static final ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

.field public static final CUSTOM:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

.field public static final INSERT:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

.field public static final ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    const-string v1, "r"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    .line 6
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    const-string v1, "a"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    .line 7
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    const-string v1, "i"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->INSERT:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    .line 8
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    const-string v1, "c"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->CUSTOM:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->id:Ljava/lang/String;

    return-void
.end method

.method public static getType(C)Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;
    .locals 1

    const/16 v0, 0x61

    if-eq p0, v0, :cond_3

    const/16 v0, 0x63

    if-eq p0, v0, :cond_2

    const/16 v0, 0x69

    if-eq p0, v0, :cond_1

    const/16 v0, 0x72

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->INSERT:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    return-object p0

    .line 29
    :cond_2
    sget-object p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->CUSTOM:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    return-object p0

    .line 25
    :cond_3
    sget-object p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    return-object p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->id:Ljava/lang/String;

    return-object v0
.end method
