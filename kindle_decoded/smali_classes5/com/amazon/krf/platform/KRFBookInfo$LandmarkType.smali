.class public final enum Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;
.super Ljava/lang/Enum;
.source "KRFBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFBookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LandmarkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

.field public static final enum kLandmarkTypeCoverPage:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

.field public static final enum kLandmarkTypeSRL:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

.field public static final enum kLandmarkTypeTOC:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 65
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    const/4 v1, 0x0

    const-string v2, "kLandmarkTypeSRL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeSRL:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    .line 66
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    const/4 v2, 0x1

    const-string v3, "kLandmarkTypeCoverPage"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeCoverPage:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    .line 67
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    const/4 v3, 0x2

    const-string v4, "kLandmarkTypeTOC"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeTOC:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    .line 63
    sget-object v5, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeSRL:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeCoverPage:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;
    .locals 1

    .line 63
    const-class v0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    return-object v0
.end method
