.class public final enum Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;
.super Ljava/lang/Enum;
.source "ManageYourTitlesItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

.field public static final enum COMICS_UNLIMITED:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

.field public static final enum KINDLE_UNLIMITED:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

.field public static final enum PRIME:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;


# instance fields
.field private final iconResId:I

.field private final id:Ljava/lang/String;

.field private final metricLabel:Ljava/lang/String;

.field private final subscriptionType:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

.field private final titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    new-instance v9, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    .line 21
    sget v5, Lcom/amazon/kcp/more/R$string;->more_item_ku_titles:I

    sget v6, Lcom/amazon/kcp/more/R$attr;->me_your_ku_titles_icon:I

    sget-object v8, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->KINDLE_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const-string v2, "KINDLE_UNLIMITED"

    const/4 v3, 0x0

    const-string v4, "setting_item_manage_prime_ku_titles"

    const-string v7, "ku"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;)V

    sput-object v9, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->KINDLE_UNLIMITED:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    .line 22
    sget v14, Lcom/amazon/kcp/more/R$string;->more_item_prime_titles:I

    sget v15, Lcom/amazon/kcp/more/R$attr;->me_your_prr_titles_icon:I

    sget-object v17, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->PRIME:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const-string v11, "PRIME"

    const/4 v12, 0x1

    const-string v13, "setting_item_manage_prime_ku_titles"

    const-string v16, "prr"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;)V

    sput-object v1, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->PRIME:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    .line 23
    sget v7, Lcom/amazon/kcp/more/R$string;->more_item_cu_titles:I

    sget v8, Lcom/amazon/kcp/more/R$attr;->me_your_cu_titles_icon:I

    sget-object v10, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->COMICS_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const-string v4, "COMICS_UNLIMITED"

    const/4 v5, 0x2

    const-string v6, "setting_item_manage_cu_titles"

    const-string v9, "cu"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;)V

    sput-object v1, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->COMICS_UNLIMITED:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->$VALUES:[Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->id:Ljava/lang/String;

    iput p4, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->titleResId:I

    iput p5, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->iconResId:I

    iput-object p6, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->metricLabel:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->subscriptionType:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;
    .locals 1

    const-class v0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->$VALUES:[Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    invoke-virtual {v0}, [Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    return-object v0
.end method


# virtual methods
.method public final getIconResId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->iconResId:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetricLabel()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->metricLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubscriptionType()Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->subscriptionType:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    return-object v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->titleResId:I

    return v0
.end method
