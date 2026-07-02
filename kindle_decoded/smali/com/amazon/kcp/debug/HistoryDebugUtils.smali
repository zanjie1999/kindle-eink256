.class public final Lcom/amazon/kcp/debug/HistoryDebugUtils;
.super Ljava/lang/Object;
.source "HistoryDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/HistoryDebugUtils;

.field private static isHistoryEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/amazon/kcp/debug/HistoryDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/HistoryDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/HistoryDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/HistoryDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHistoryEnabled()Z
    .locals 1

    .line 7
    sget-boolean v0, Lcom/amazon/kcp/debug/HistoryDebugUtils;->isHistoryEnabled:Z

    return v0
.end method
