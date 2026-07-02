.class public final enum Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;
.super Ljava/lang/Enum;
.source "KRFBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFBookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserVisibleLabeling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

.field public static final enum kUserVisibleLabelingLocation:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

.field public static final enum kUserVisibleLabelingNone:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

.field public static final enum kUserVisibleLabelingPageExclusive:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    const/4 v1, 0x0

    const-string v2, "kUserVisibleLabelingNone"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->kUserVisibleLabelingNone:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    .line 51
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    const/4 v2, 0x1

    const-string v3, "kUserVisibleLabelingPageExclusive"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->kUserVisibleLabelingPageExclusive:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    .line 52
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    const/4 v3, 0x2

    const-string v4, "kUserVisibleLabelingLocation"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->kUserVisibleLabelingLocation:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    .line 48
    sget-object v5, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->kUserVisibleLabelingNone:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->kUserVisibleLabelingPageExclusive:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static createFromInt(I)Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;
    .locals 1

    .line 55
    invoke-static {}, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->values()[Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    return-object v0
.end method
