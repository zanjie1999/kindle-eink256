.class final enum Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;
.super Ljava/lang/Enum;
.source "RedirectUrlBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/RedirectUrlBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MarketplaceDetectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

.field public static final enum EID_ONLY:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;


# instance fields
.field private final addParams:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri$Builder;",
            "Landroid/net/Uri$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final treatmentValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    .line 146
    sget-object v2, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;

    const/4 v3, 0x0

    const-string v4, "EID_ONLY"

    const-string v5, "C"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->EID_ONLY:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    .line 147
    sget-object v2, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$2;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$2;

    const/4 v3, 0x1

    const-string v4, "EID_AND_MARKETPLACE"

    const-string v5, "T1"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    .line 148
    sget-object v2, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$3;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$3;

    const/4 v3, 0x2

    const-string v4, "MARKETPLACE_ONLY"

    const-string v5, "T2"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->$VALUES:[Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri$Builder;",
            "Landroid/net/Uri$Builder;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->treatmentValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->addParams:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;
    .locals 1

    const-class v0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->$VALUES:[Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    invoke-virtual {v0}, [Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    return-object v0
.end method


# virtual methods
.method public final getAddParams()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri$Builder;",
            "Landroid/net/Uri$Builder;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->addParams:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getTreatmentValue()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->treatmentValue:Ljava/lang/String;

    return-object v0
.end method
