.class public final Lcom/amazon/kcp/debug/ToastAutoDismissUtils;
.super Ljava/lang/Object;
.source "ToastAutoDismissUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/ToastAutoDismissUtils;

.field private static isToastAutoDismissUtilsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/amazon/kcp/debug/ToastAutoDismissUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/ToastAutoDismissUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/ToastAutoDismissUtils;->INSTANCE:Lcom/amazon/kcp/debug/ToastAutoDismissUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isToastAutoDismissUtilsEnabled()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/amazon/kcp/debug/ToastAutoDismissUtils;->isToastAutoDismissUtilsEnabled:Z

    return v0
.end method
