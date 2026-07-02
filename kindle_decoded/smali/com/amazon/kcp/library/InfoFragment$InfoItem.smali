.class final enum Lcom/amazon/kcp/library/InfoFragment$InfoItem;
.super Ljava/lang/Enum;
.source "InfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/InfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InfoItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/InfoFragment$InfoItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/InfoFragment$InfoItem;

.field public static final enum ABOUT:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

.field public static final enum COOKIES:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

.field public static final Companion:Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;

.field public static final enum INTEREST_BASED_ADS:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

.field public static final enum LEGAL_NOTICES:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

.field public static final enum PRIVACY_POLICY:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

.field public static final enum TERMS_OF_USE:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

.field public static final enum WHATS_NEW:Lcom/amazon/kcp/library/InfoFragment$InfoItem;


# instance fields
.field private final textId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    new-instance v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    .line 33
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->about:I

    const/4 v3, 0x0

    const-string v4, "ABOUT"

    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->ABOUT:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    .line 34
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->whats_new_info_item:I

    const/4 v3, 0x1

    const-string v4, "WHATS_NEW"

    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->WHATS_NEW:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    .line 35
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->terms:I

    const/4 v3, 0x2

    const-string v4, "TERMS_OF_USE"

    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->TERMS_OF_USE:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    .line 36
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->legal:I

    const/4 v3, 0x3

    const-string v4, "LEGAL_NOTICES"

    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->LEGAL_NOTICES:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    .line 37
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->privacy_policy:I

    const/4 v3, 0x4

    const-string v4, "PRIVACY_POLICY"

    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->PRIVACY_POLICY:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    .line 38
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->cookies:I

    const/4 v3, 0x5

    const-string v4, "COOKIES"

    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->COOKIES:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    .line 39
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->interest_based_ads:I

    const/4 v3, 0x6

    const-string v4, "INTEREST_BASED_ADS"

    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->INTEREST_BASED_ADS:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->$VALUES:[Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    new-instance v0, Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->Companion:Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->textId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/InfoFragment$InfoItem;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/InfoFragment$InfoItem;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->$VALUES:[Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/InfoFragment$InfoItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    return-object v0
.end method


# virtual methods
.method public final getTextId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->textId:I

    return v0
.end method
