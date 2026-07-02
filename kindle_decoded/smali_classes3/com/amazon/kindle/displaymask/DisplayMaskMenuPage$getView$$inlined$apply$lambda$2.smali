.class final Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "FoldableDebug.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $prefs$inlined:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;ZLandroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$2;->this$0:Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;

    iput-object p3, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$2;->$prefs$inlined:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$2;->$prefs$inlined:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ENABLE_DEBUG"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    iget-object p1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$2;->this$0:Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;

    invoke-static {p1}, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->access$getActivity$p(Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "You should restart the app to make sure things work as expected"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
