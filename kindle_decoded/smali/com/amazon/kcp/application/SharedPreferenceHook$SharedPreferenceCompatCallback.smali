.class Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;
.super Ljava/lang/Object;
.source "SharedPreferenceHook.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/SharedPreferenceHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedPreferenceCompatCallback"
.end annotation


# static fields
.field private static final MESSAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAUSE_ACTIVITY:I = 0x65

.field private static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field private static final SERVICE_ARGS:I = 0x73

.field private static final SLEEPING:I = 0x89

.field private static final STOP_ACTIVITY_HIDE:I = 0x68

.field private static final STOP_ACTIVITY_SHOW:I = 0x67

.field private static final STOP_SERVICE:I = 0x74


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SERVICE_ARGS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STOP_SERVICE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SLEEPING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STOP_ACTIVITY_SHOW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STOP_ACTIVITY_HIDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAUSE_ACTIVITY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAUSE_ACTIVITY_FINISHING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 84
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCompatCallback;->MESSAGE_MAP:Ljava/util/Map;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCleaner;->clearPendingTask(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
