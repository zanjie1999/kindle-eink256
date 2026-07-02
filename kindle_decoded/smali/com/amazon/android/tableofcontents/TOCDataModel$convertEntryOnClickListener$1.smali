.class public final Lcom/amazon/android/tableofcontents/TOCDataModel$convertEntryOnClickListener$1;
.super Ljava/lang/Object;
.source "TOCDataModel.kt"

# interfaces
.implements Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/tableofcontents/TOCDataModel;->convertEntryOnClickListener(Landroid/view/View$OnClickListener;)Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/amazon/android/tableofcontents/TOCDataModel;


# direct methods
.method constructor <init>(Lcom/amazon/android/tableofcontents/TOCDataModel;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel$convertEntryOnClickListener$1;->this$0:Lcom/amazon/android/tableofcontents/TOCDataModel;

    iput-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel$convertEntryOnClickListener$1;->$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel$convertEntryOnClickListener$1;->$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel$convertEntryOnClickListener$1;->this$0:Lcom/amazon/android/tableofcontents/TOCDataModel;

    invoke-static {p1}, Lcom/amazon/android/tableofcontents/TOCDataModel;->access$getCloseTOCDelegate$p(Lcom/amazon/android/tableofcontents/TOCDataModel;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
