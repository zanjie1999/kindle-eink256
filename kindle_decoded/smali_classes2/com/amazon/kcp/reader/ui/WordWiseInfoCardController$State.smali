.class public final enum Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;
.super Ljava/lang/Enum;
.source "WordWiseInfoCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field public static final enum ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field public static final enum ALTERNATE_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field public static final enum CURRENT_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field public static final enum FEEDBACK_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field public static final enum FTUE_MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field public static final enum MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field public static final enum NONE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

.field public static final enum SENSE_DISAMBIGUATION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 896
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->NONE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 897
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v2, 0x1

    const-string v3, "CURRENT_SENSE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->CURRENT_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 898
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v3, 0x2

    const-string v4, "SENSE_DISAMBIGUATION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->SENSE_DISAMBIGUATION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 899
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v4, 0x3

    const-string v5, "ALTERNATE_SENSE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 900
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v5, 0x4

    const-string v6, "FEEDBACK_CHOICES"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->FEEDBACK_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 901
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v6, 0x5

    const-string v7, "ALTERNATE_MEANINGS"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 902
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v7, 0x6

    const-string v8, "FTUE_MULTIPLE_CHOICES"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->FTUE_MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 903
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/4 v8, 0x7

    const-string v9, "MULTIPLE_CHOICES"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    .line 895
    sget-object v10, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->NONE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->CURRENT_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->SENSE_DISAMBIGUATION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_SENSE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->FEEDBACK_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->ALTERNATE_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->FTUE_MULTIPLE_CHOICES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->$VALUES:[Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 895
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;
    .locals 1

    .line 895
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;
    .locals 1

    .line 895
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->$VALUES:[Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$State;

    return-object v0
.end method
