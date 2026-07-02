.class final Lcom/amazon/android/util/UninitializedValue;
.super Ljava/lang/Object;
.source "Lazy.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/android/util/UninitializedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/android/util/UninitializedValue;

    invoke-direct {v0}, Lcom/amazon/android/util/UninitializedValue;-><init>()V

    sput-object v0, Lcom/amazon/android/util/UninitializedValue;->INSTANCE:Lcom/amazon/android/util/UninitializedValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
