.class public final Lcom/amazon/kcp/library/ui/KindleToastState;
.super Ljava/lang/Object;
.source "LibraryToast.kt"


# instance fields
.field private final accessibilityMessage:Ljava/lang/String;

.field private final identifier:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final toastAction:Lcom/amazon/kindle/toast/KindleToastAction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/KindleToastState;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/library/ui/KindleToastState;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/ui/KindleToastState;->accessibilityMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/library/ui/KindleToastState;->toastAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-void
.end method


# virtual methods
.method public final getAccessibilityMessage()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/KindleToastState;->accessibilityMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/KindleToastState;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/KindleToastState;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getToastAction()Lcom/amazon/kindle/toast/KindleToastAction;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/KindleToastState;->toastAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-object v0
.end method
