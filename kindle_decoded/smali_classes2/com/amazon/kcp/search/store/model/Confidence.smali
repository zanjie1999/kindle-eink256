.class public final enum Lcom/amazon/kcp/search/store/model/Confidence;
.super Ljava/lang/Enum;
.source "SpellCorrectionInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/store/model/Confidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/store/model/Confidence;

.field public static final enum DID_YOU_MEAN:Lcom/amazon/kcp/search/store/model/Confidence;

.field public static final enum NONE:Lcom/amazon/kcp/search/store/model/Confidence;

.field public static final enum OPT_OUT:Lcom/amazon/kcp/search/store/model/Confidence;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/search/store/model/Confidence;

    new-instance v1, Lcom/amazon/kcp/search/store/model/Confidence;

    const/4 v2, 0x0

    const-string v3, "OPT_OUT"

    const-string v4, "optOut"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/store/model/Confidence;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/store/model/Confidence;->OPT_OUT:Lcom/amazon/kcp/search/store/model/Confidence;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/store/model/Confidence;

    const/4 v2, 0x1

    const-string v3, "DID_YOU_MEAN"

    const-string v4, "didYouMean"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/store/model/Confidence;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/store/model/Confidence;->DID_YOU_MEAN:Lcom/amazon/kcp/search/store/model/Confidence;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/store/model/Confidence;

    const/4 v2, 0x2

    const-string v3, "NONE"

    const-string v4, "none"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/store/model/Confidence;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/store/model/Confidence;->NONE:Lcom/amazon/kcp/search/store/model/Confidence;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/search/store/model/Confidence;->$VALUES:[Lcom/amazon/kcp/search/store/model/Confidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/search/store/model/Confidence;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/store/model/Confidence;
    .locals 1

    const-class v0, Lcom/amazon/kcp/search/store/model/Confidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/store/model/Confidence;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/store/model/Confidence;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/store/model/Confidence;->$VALUES:[Lcom/amazon/kcp/search/store/model/Confidence;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/store/model/Confidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/store/model/Confidence;

    return-object v0
.end method


# virtual methods
.method public final getStringValue()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kcp/search/store/model/Confidence;->stringValue:Ljava/lang/String;

    return-object v0
.end method
