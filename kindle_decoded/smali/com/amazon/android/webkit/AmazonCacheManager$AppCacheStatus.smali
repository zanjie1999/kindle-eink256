.class public final enum Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;
.super Ljava/lang/Enum;
.source "AmazonCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppCacheStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

.field public static final enum CACHED:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

.field public static final enum NO_UPDATE:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

.field public static final enum UNKNOWN:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

.field public static final enum UPDATED:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->UNKNOWN:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    .line 15
    new-instance v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    const/4 v2, 0x1

    const-string v3, "NO_UPDATE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->NO_UPDATE:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    .line 16
    new-instance v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    const/4 v3, 0x2

    const-string v4, "CACHED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->CACHED:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    .line 17
    new-instance v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    const/4 v4, 0x3

    const-string v5, "UPDATED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->UPDATED:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    .line 13
    sget-object v6, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->UNKNOWN:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->NO_UPDATE:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->CACHED:Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->$VALUES:[Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->$VALUES:[Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    invoke-virtual {v0}, [Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;

    return-object v0
.end method
