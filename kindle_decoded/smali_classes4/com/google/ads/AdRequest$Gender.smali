.class public final enum Lcom/google/ads/AdRequest$Gender;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/AdRequest$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/google/ads/AdRequest$Gender;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum MALE:Lcom/google/ads/AdRequest$Gender;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/ads/AdRequest$Gender;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/ads/AdRequest$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/AdRequest$Gender;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/google/ads/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    new-instance v0, Lcom/google/ads/AdRequest$Gender;

    const/4 v2, 0x1

    const-string v3, "MALE"

    .line 2
    invoke-direct {v0, v3, v2}, Lcom/google/ads/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    new-instance v0, Lcom/google/ads/AdRequest$Gender;

    const/4 v3, 0x2

    const-string v4, "FEMALE"

    .line 3
    invoke-direct {v0, v4, v3}, Lcom/google/ads/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/ads/AdRequest$Gender;

    sget-object v5, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/ads/AdRequest$Gender;->zza:[Lcom/google/ads/AdRequest$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/AdRequest$Gender;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/ads/AdRequest$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/AdRequest$Gender;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/AdRequest$Gender;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->zza:[Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v0}, [Lcom/google/ads/AdRequest$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/AdRequest$Gender;

    return-object v0
.end method
