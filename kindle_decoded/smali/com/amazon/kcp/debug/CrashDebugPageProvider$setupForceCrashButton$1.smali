.class final Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceCrashButton$1;
.super Ljava/lang/Object;
.source "CrashDebugPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/CrashDebugPageProvider;->setupForceCrashButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceCrashButton$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceCrashButton$1;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceCrashButton$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceCrashButton$1;->INSTANCE:Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceCrashButton$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 39
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Force App Crash via Debug Menu"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
