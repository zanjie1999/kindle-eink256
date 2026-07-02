.class public final enum Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;
.super Ljava/lang/Enum;
.source "IReadingListRecommendationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

.field public static final enum BOOKWIZARD:Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

.field public static final enum STORE:Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;


# instance fields
.field private priorityValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    const/4 v1, 0x0

    const-string v2, "BOOKWIZARD"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->BOOKWIZARD:Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    new-instance v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    const/4 v2, 0x1

    const-string v3, "STORE"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->STORE:Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    .line 15
    sget-object v4, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->BOOKWIZARD:Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->$VALUES:[Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->priorityValue:I

    return-void
.end method

.method public static getType(I)Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;
    .locals 2

    .line 44
    sget-object v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->BOOKWIZARD:Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    iget v1, v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->priorityValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->STORE:Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    iget v1, v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->priorityValue:I

    if-ne v1, p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->$VALUES:[Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    return-object v0
.end method


# virtual methods
.method public getPriorityValue()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->priorityValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->priorityValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
