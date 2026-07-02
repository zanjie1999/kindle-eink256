.class final Lkotlin/KotlinVersionCurrentValue;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lkotlin/KotlinVersionCurrentValue;

    invoke-direct {v0}, Lkotlin/KotlinVersionCurrentValue;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get()Lkotlin/KotlinVersion;
    .locals 4

    .line 82
    new-instance v0, Lkotlin/KotlinVersion;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lkotlin/KotlinVersion;-><init>(III)V

    return-object v0
.end method
