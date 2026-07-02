.class public final enum Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;
.super Ljava/lang/Enum;
.source "KRFBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFBookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntendedAudience"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

.field public static final enum kIntendedAudienceChildren:Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

.field public static final enum kIntendedAudienceNone:Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 77
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    const/4 v1, 0x0

    const-string v2, "kIntendedAudienceNone"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->kIntendedAudienceNone:Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    .line 78
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    const/4 v2, 0x1

    const-string v3, "kIntendedAudienceChildren"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->kIntendedAudienceChildren:Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    .line 73
    sget-object v4, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->kIntendedAudienceNone:Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static createFromInt(I)Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;
    .locals 1

    .line 81
    invoke-static {}, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->values()[Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;
    .locals 1

    .line 73
    const-class v0, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    return-object v0
.end method
