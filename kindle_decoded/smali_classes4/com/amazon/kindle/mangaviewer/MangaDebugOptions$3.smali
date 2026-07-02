.class Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;
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

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$setAnimationDurationButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->this$0:Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$setAnimationDurationButton:Landroid/widget/Button;

    iput-object p5, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$animationDurationEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "EnableMangaCustomAnimation"

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->this$0:Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$setAnimationDurationButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;->val$animationDurationEdit:Landroid/widget/EditText;

    invoke-static {v0, p1, v1, v4, v2}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;->access$000(Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Z)V

    .line 144
    const-class p1, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    const-string v0, "USE_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 145
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 146
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
