.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$3;
.super Ljava/lang/Object;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DownloadDebugMenu;->setupOkHttpOptions(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$3;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$3;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$3;->INSTANCE:Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 153
    invoke-static {p2}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->setShouldSimulateAdpFailures(Z)V

    return-void
.end method
