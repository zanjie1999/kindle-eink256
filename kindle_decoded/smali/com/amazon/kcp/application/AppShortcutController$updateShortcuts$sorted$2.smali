.class final Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;
.super Ljava/lang/Object;
.source "AppShortcutController.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AppShortcutController;->updateShortcuts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;

    invoke-direct {v0}, Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;->INSTANCE:Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;)I
    .locals 1

    const-string/jumbo v0, "o1"

    .line 76
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/foundation/Prioritized;->getPriority()I

    move-result p1

    const-string/jumbo v0, "o2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/foundation/Prioritized;->getPriority()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;

    check-cast p2, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;->compare(Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;)I

    move-result p1

    return p1
.end method
