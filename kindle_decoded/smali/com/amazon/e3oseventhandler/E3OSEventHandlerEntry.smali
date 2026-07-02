.class public final Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;
.super Ljava/lang/Object;
.source "E3OSEventHandlerEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;
    }
.end annotation


# static fields
.field private static final CUSTOM_HANDLER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/e3oseventhandler/IE3OSEventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EVENT_HANDLER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/e3oseventhandler/IE3OSEventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final INTERNAL_TAG:Ljava/lang/String; = "com.amazon.e3oseventhandler.E3OSEventHandlerEntry"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->EVENT_HANDLER_MAP:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->CUSTOM_HANDLER_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomEventHandler(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/e3oseventhandler/IE3OSEventHandler;",
            ">;)V"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->CUSTOM_HANDLER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getCustomEventHandler(Landroid/view/View;)Lcom/amazon/e3oseventhandler/AbstractInteractionHandler;
    .locals 5

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E3OS_WIDGET_CONTROL_HANDLER"

    const-string v3, "id"

    .line 113
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    sget-object v2, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->EVENT_HANDLER_MAP:Ljava/util/Map;

    monitor-enter v2

    .line 118
    :try_start_0
    sget-object v3, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->EVENT_HANDLER_MAP:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    .line 121
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 122
    sget-object v4, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->EVENT_HANDLER_MAP:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 124
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid E3OS_WIDGET_CONTROL_HANDLER value: not a valid IE3OSEventHandler implementation"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 127
    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_2

    .line 131
    sget-object v0, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->CUSTOM_HANDLER_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Class;

    :cond_2
    if-eqz v3, :cond_3

    .line 135
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/e3oseventhandler/IE3OSEventHandler;

    .line 136
    invoke-interface {v0, p0}, Lcom/amazon/e3oseventhandler/IE3OSEventHandler;->setWidgetView(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v0

    :catchall_2
    move-exception p0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid E3OS_WIDGET_CONTROL_HANDLER value: not a valid IE3OSEventHandler implementation"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public static getE3osResourcesHashMap(Landroid/view/View;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    invoke-static {}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->values()[Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 208
    iget-object v4, v4, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry$E3osAttributes;->mName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->getResourceId(Landroid/view/View;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getEventHandler(Landroid/view/View;)Lcom/amazon/e3oseventhandler/AbstractInteractionHandler;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/amazon/e3oseventhandler/E3OSEventHandlerEntry;->getCustomEventHandler(Landroid/view/View;)Lcom/amazon/e3oseventhandler/AbstractInteractionHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 67
    :cond_1
    instance-of v1, p0, Landroid/widget/CheckBox;

    if-nez v1, :cond_c

    instance-of v1, p0, Landroid/widget/RadioButton;

    if-nez v1, :cond_c

    instance-of v1, p0, Landroid/widget/Switch;

    if-nez v1, :cond_c

    instance-of v1, p0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 73
    new-instance v0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/ListViewEventHandler;-><init>(Landroid/view/View;)V

    return-object v0

    .line 74
    :cond_3
    instance-of v1, p0, Landroid/widget/GridView;

    if-eqz v1, :cond_4

    .line 75
    new-instance v0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;-><init>(Landroid/view/View;)V

    return-object v0

    .line 76
    :cond_4
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_5

    .line 77
    new-instance v0, Lcom/amazon/e3oseventhandler/EditTextEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/EditTextEventHandler;-><init>(Landroid/view/View;)V

    return-object v0

    .line 78
    :cond_5
    instance-of v1, p0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_6

    .line 79
    new-instance v0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;-><init>(Landroid/view/View;)V

    return-object v0

    .line 80
    :cond_6
    instance-of v1, p0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_7

    .line 81
    new-instance v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;-><init>(Landroid/view/View;)V

    return-object v0

    .line 82
    :cond_7
    instance-of v1, p0, Landroid/webkit/WebView;

    if-eqz v1, :cond_8

    .line 83
    new-instance v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;-><init>(Landroid/view/View;)V

    return-object v0

    .line 84
    :cond_8
    instance-of v1, p0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_9

    .line 85
    new-instance v0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;-><init>(Landroid/view/View;)V

    return-object v0

    .line 88
    :cond_9
    :try_start_0
    instance-of v1, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_b

    .line 89
    instance-of v1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;

    if-eqz v1, :cond_a

    return-object v0

    .line 92
    :cond_a
    new-instance v1, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;

    invoke-direct {v1, p0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;-><init>(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 95
    sget-boolean v1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app doesn\'t have dependancy of class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    :cond_b
    sget-boolean p0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    return-object v0

    .line 71
    :cond_c
    :goto_0
    new-instance v0, Lcom/amazon/e3oseventhandler/ToggleHandler;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/ToggleHandler;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private static getResourceId(Landroid/view/View;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "id"

    .line 225
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
