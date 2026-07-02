.class Lcom/amazon/kindle/cms/api/CallbackService$1;
.super Lcom/amazon/kindle/cms/ipc/AppCallback$Stub;
.source "CallbackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/CallbackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cms/api/CallbackService;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/api/CallbackService;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/AppCallback$Stub;-><init>()V

    return-void
.end method

.method private syncOne(Lcom/amazon/kindle/cms/api/CMSServer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/cms/api/CMSApi;->getCallback(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 223
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cms/api/Callback;->sync(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;)V

    return-void

    .line 220
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 140
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/cms/api/CallbackService$1;->executeEx(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;)[I

    move-result-object p1

    return-object p1
.end method

.method public executeEx(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;)[I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 147
    iget-object v2, v1, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-static {v2}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/cms/api/CMSApi;->getCallback(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 153
    new-instance v10, Lcom/amazon/kindle/cms/api/CMSServerImpl;

    iget-object v4, v1, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    move-object/from16 v5, p1

    invoke-direct {v10, v4, v5}, Lcom/amazon/kindle/cms/api/CMSServerImpl;-><init>(Landroid/content/Context;Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;)V

    .line 154
    array-length v4, v0

    new-array v11, v4, [I

    .line 155
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 160
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v15, v3, :cond_2

    .line 162
    aget-object v3, v0, v15

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 163
    aget-object v7, p4, v15

    if-nez p6, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 164
    :cond_0
    aget-object v3, p6, v15

    :goto_1
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 167
    instance-of v3, v2, Lcom/amazon/kindle/cms/api/CallbackEx;

    if-eqz v3, :cond_1

    .line 169
    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/cms/api/CallbackEx;

    move-object v4, v10

    move-object v5, v12

    move-object/from16 v8, p5

    .line 170
    invoke-interface/range {v3 .. v9}, Lcom/amazon/kindle/cms/api/CallbackEx;->execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/VerbExtrasInterface;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v2

    move-object v4, v10

    move-object v5, v12

    move-object/from16 v8, p5

    .line 174
    invoke-interface/range {v3 .. v8}, Lcom/amazon/kindle/cms/api/Callback;->execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object v3

    .line 177
    :goto_2
    invoke-virtual {v3}, Lcom/amazon/kindle/cms/api/Callback$Result;->getCode()I

    move-result v3

    aput v3, v11, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v11

    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 150
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public notifyAction(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/cms/api/CMSApi;->getCallback(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v2, Lcom/amazon/kindle/cms/api/CMSServerImpl;

    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-direct {v2, v0, p1}, Lcom/amazon/kindle/cms/api/CMSServerImpl;-><init>(Landroid/content/Context;Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;)V

    .line 201
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 202
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    move-object v5, p4

    move-object v6, p5

    .line 207
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/api/Callback;->execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3

    .line 198
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public sync(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 116
    :try_start_0
    new-instance v2, Lcom/amazon/kindle/cms/api/CMSServerImpl;

    iget-object v3, p0, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-direct {v2, v3, p1}, Lcom/amazon/kindle/cms/api/CMSServerImpl;-><init>(Landroid/content/Context;Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;)V

    if-eqz p2, :cond_0

    .line 119
    invoke-direct {p0, v2, p2}, Lcom/amazon/kindle/cms/api/CallbackService$1;->syncOne(Lcom/amazon/kindle/cms/api/CMSServer;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-static {p2}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/cms/api/CMSApi;->getAllSources()Ljava/util/List;

    move-result-object p2

    iget-object v3, p0, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-virtual {v3}, Landroid/app/IntentService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->registerSources(Ljava/util/List;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/cms/api/CallbackService$1;->syncAll(Lcom/amazon/kindle/cms/api/CMSServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public syncAll(Lcom/amazon/kindle/cms/api/CMSServer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CallbackService$1;->this$0:Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->getAllSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/cms/api/CallbackService$1;->syncOne(Lcom/amazon/kindle/cms/api/CMSServer;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
