.class final Lcom/amazon/kindle/toast/DialogToastConfig;
.super Ljava/lang/Object;
.source "KindleToast.kt"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

.field private message:Ljava/lang/String;

.field private messageForAccessibility:Ljava/lang/String;

.field private viewAction:Lcom/amazon/kindle/toast/KindleToastAction;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/KindleToastAction;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageForAccessibility"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->messageForAccessibility:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    iput-object p5, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/KindleToastAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const-string v0, ""

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move-object v5, p3

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, p3

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 189
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/toast/DialogToastConfig;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/KindleToastAction;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/toast/DialogToastConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/toast/DialogToastConfig;

    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->activity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/amazon/kindle/toast/DialogToastConfig;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/toast/DialogToastConfig;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->messageForAccessibility:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/toast/DialogToastConfig;->messageForAccessibility:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    iget-object v1, p1, Lcom/amazon/kindle/toast/DialogToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    iget-object p1, p1, Lcom/amazon/kindle/toast/DialogToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getButtonAction()Lcom/amazon/kindle/toast/KindleToastAction;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageForAccessibility()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->messageForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewAction()Lcom/amazon/kindle/toast/KindleToastAction;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->message:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->messageForAccessibility:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final setButtonAction(Lcom/amazon/kindle/toast/KindleToastAction;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->message:Ljava/lang/String;

    return-void
.end method

.method public final setMessageForAccessibility(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->messageForAccessibility:Ljava/lang/String;

    return-void
.end method

.method public final setViewAction(Lcom/amazon/kindle/toast/KindleToastAction;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogToastConfig(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageForAccessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->messageForAccessibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
