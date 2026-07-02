.class final Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LetterboxingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getChangeHandler()Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[I",
        "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLetterboxingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LetterboxingManager.kt\ncom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [I

    check-cast p2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;->invoke([ILcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([ILcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)V
    .locals 4

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "checkedTextView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->access$getInUse$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->access$getCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    const-string v3, "it"

    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setChecked(Z)V

    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setChecked(Z)V

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    invoke-static {p1, p2}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->access$getLetterboxColorForCheckbox(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setLetterboxColor(Lcom/amazon/android/docviewer/LetterboxingColor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->access$getInUse$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->access$getInUse$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method
