.class public final Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;
.super Ljava/lang/Object;
.source "SidekickSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/debug/SidekickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/amazon/kcp/home/debug/SidekickSettings;->access$getINSTANCE$cp()Lcom/amazon/android/util/LazyWith;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/util/LazyWith;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/debug/SidekickSettings;

    return-object p1
.end method
