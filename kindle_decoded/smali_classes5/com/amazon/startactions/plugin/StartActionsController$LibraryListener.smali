.class Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "StartActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryListener"
.end annotation


# instance fields
.field private inProgressBookIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;)V
    .locals 0

    .line 1111
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    .line 1113
    invoke-static {}, Lcom/amazon/ea/guava/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->inProgressBookIds:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V
    .locals 0

    .line 1111
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;)V

    return-void
.end method


# virtual methods
.method public onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 1127
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->DOWNLOADING:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v0, "server_state"

    const-string/jumbo v1, "startactions.config"

    if-eqz p2, :cond_2

    .line 1129
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->inProgressBookIds:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1130
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1131
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Already requested a sidecar for this bookId. Ignoring."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1136
    :cond_1
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->inProgressBookIds:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1139
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/startactions/plugin/StartActionsState;->fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;

    move-result-object p2

    .line 1141
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsState;->OFF:Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    sget-boolean p2, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    if-eqz p2, :cond_5

    .line 1142
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p2, p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1500(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    .line 1144
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p2

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {p2, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1146
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/startactions/plugin/StartActionsState;->fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;

    move-result-object p2

    .line 1148
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsState;->OFF:Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->inProgressBookIds:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-boolean p2, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    if-nez p2, :cond_3

    .line 1150
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p2, p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1500(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 1153
    :cond_3
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->inProgressBookIds:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1154
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1159
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;->inProgressBookIds:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1160
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "startactions.gr.shelf"

    invoke-static {p2, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->deletePreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
