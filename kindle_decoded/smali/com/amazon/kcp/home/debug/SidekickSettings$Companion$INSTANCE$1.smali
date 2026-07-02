.class final Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SidekickSettings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/debug/SidekickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lcom/amazon/kcp/home/debug/SidekickSettings;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;->INSTANCE:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 241
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;->invoke(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object p1

    return-object p1
.end method
