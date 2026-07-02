.class Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;
.super Ljava/lang/Object;
.source "MangaDebugOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;

.field final synthetic val$animationDurationEdit:Landroid/widget/EditText;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;Landroid/widget/EditText;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;->val$animationDurationEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 117
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;->val$animationDurationEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "MangaAnimationDuration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    const-string v1, "ANIMATION_DURATION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    const-class v1, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
