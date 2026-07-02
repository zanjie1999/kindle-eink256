.class Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;
.super Ljava/lang/Object;
.source "KuConversionDebugMenuProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->mockKuBooks(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

.field final synthetic val$bookList:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;

.field final synthetic val$gson:Lcom/google/gson/Gson;

.field final synthetic val$numberOfBooks:[I


# direct methods
.method constructor <init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;[ILcom/google/gson/Gson;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

    iput-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->val$bookList:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;

    iput-object p3, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->val$numberOfBooks:[I

    iput-object p4, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->val$gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 191
    iget-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->val$bookList:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;

    invoke-static {p2}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;->access$400(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->val$numberOfBooks:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;->access$402(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;Ljava/util/List;)Ljava/util/List;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 193
    iget-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

    invoke-static {p2}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->access$500(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "KuConversionPreferences"

    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v3, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->val$gson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->val$bookList:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;

    .line 194
    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CapturedBooks"

    invoke-interface {p2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v3, "CapturedBooksTimestamp"

    .line 195
    invoke-interface {p2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    iget-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

    invoke-static {p2}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->access$500(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$7;->val$numberOfBooks:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " books to SharedPreferences at timestamp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 197
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 198
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
