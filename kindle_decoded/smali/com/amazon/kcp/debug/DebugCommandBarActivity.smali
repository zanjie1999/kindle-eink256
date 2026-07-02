.class public final Lcom/amazon/kcp/debug/DebugCommandBarActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "DebugCommandBarActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/DebugCommandBarActivity$TestButton;,
        Lcom/amazon/kcp/debug/DebugCommandBarActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugCommandBarActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugCommandBarActivity.kt\ncom/amazon/kcp/debug/DebugCommandBarActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1588#2,3:109\n*E\n*S KotlinDebug\n*F\n+ 1 DebugCommandBarActivity.kt\ncom/amazon/kcp/debug/DebugCommandBarActivity\n*L\n79#1,3:109\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/debug/DebugCommandBarActivity$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private endButtonCountText:Landroid/widget/EditText;

.field private final enterListener:Landroid/widget/TextView$OnEditorActionListener;

.field private startButtonCountText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/debug/DebugCommandBarActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/debug/DebugCommandBarActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->Companion:Lcom/amazon/kcp/debug/DebugCommandBarActivity$Companion;

    .line 105
    const-class v0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/kcp/debug/DebugCommandBarActivity$enterListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugCommandBarActivity$enterListener$1;-><init>(Lcom/amazon/kcp/debug/DebugCommandBarActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->enterListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method private final generateTestGroup(I)Lcom/amazon/android/widget/WidgetItemGroup;
    .locals 4

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    new-instance v1, Lcom/amazon/kcp/debug/DebugCommandBarActivity$generateTestGroup$thing$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugCommandBarActivity$generateTestGroup$thing$1;-><init>(Lcom/amazon/kcp/debug/DebugCommandBarActivity;)V

    .line 79
    new-instance v2, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 109
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 110
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Lcom/amazon/android/widget/WidgetItemGroup;

    invoke-direct {p1, v0}, Lcom/amazon/android/widget/WidgetItemGroup;-><init>(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    sget v0, Lcom/amazon/kindle/krl/R$style;->Theme_ReaderStyle_Black_NonLinear:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 41
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/amazon/kindle/krl/R$layout;->debug_command_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 44
    sget p1, Lcom/amazon/kindle/krl/R$id;->start_button_count:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->enterListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->startButtonCountText:Landroid/widget/EditText;

    .line 50
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$id;->end_button_count:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->enterListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->endButtonCountText:Landroid/widget/EditText;

    :cond_1
    return-void
.end method

.method public final updateTheThings(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget p1, Lcom/amazon/kindle/krl/R$id;->debug_command_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/widget/CommandBar;

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->TAG:Ljava/lang/String;

    const-string v0, "Where\'s the bar, yo?"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->startButtonCountText:Landroid/widget/EditText;

    const-string v1, "0"

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 66
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->generateTestGroup(I)Lcom/amazon/android/widget/WidgetItemGroup;

    move-result-object v0

    sget-object v2, Lcom/amazon/android/widget/CommandBar$Position;->START:Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/android/widget/CommandBar;->setItems(Lcom/amazon/android/widget/WidgetItemGroup;Lcom/amazon/android/widget/CommandBar$Position;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->endButtonCountText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 72
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->generateTestGroup(I)Lcom/amazon/android/widget/WidgetItemGroup;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/widget/CommandBar;->setItems(Lcom/amazon/android/widget/WidgetItemGroup;Lcom/amazon/android/widget/CommandBar$Position;)V

    return-void
.end method
