.class public final enum Lcom/amazon/bookwizard/BookWizardConfig$Type;
.super Ljava/lang/Enum;
.source "BookWizardConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/BookWizardConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/bookwizard/BookWizardConfig$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/bookwizard/BookWizardConfig$Type;

.field public static final enum FILE:Lcom/amazon/bookwizard/BookWizardConfig$Type;

.field public static final enum INTENT:Lcom/amazon/bookwizard/BookWizardConfig$Type;

.field public static final enum STATE:Lcom/amazon/bookwizard/BookWizardConfig$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 345
    new-instance v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;

    const/4 v1, 0x0

    const-string v2, "INTENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;->INTENT:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    .line 346
    new-instance v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;

    const/4 v2, 0x1

    const-string v3, "FILE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/bookwizard/BookWizardConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;->FILE:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    .line 347
    new-instance v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;

    const/4 v3, 0x2

    const-string v4, "STATE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/bookwizard/BookWizardConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;->STATE:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/bookwizard/BookWizardConfig$Type;

    .line 344
    sget-object v5, Lcom/amazon/bookwizard/BookWizardConfig$Type;->INTENT:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/bookwizard/BookWizardConfig$Type;->FILE:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/bookwizard/BookWizardConfig$Type;->$VALUES:[Lcom/amazon/bookwizard/BookWizardConfig$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 344
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/bookwizard/BookWizardConfig$Type;
    .locals 1

    .line 344
    const-class v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/bookwizard/BookWizardConfig$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/bookwizard/BookWizardConfig$Type;
    .locals 1

    .line 344
    sget-object v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;->$VALUES:[Lcom/amazon/bookwizard/BookWizardConfig$Type;

    invoke-virtual {v0}, [Lcom/amazon/bookwizard/BookWizardConfig$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/bookwizard/BookWizardConfig$Type;

    return-object v0
.end method
