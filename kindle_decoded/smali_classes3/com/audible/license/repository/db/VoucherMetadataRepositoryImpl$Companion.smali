.class public final Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;
.super Ljava/lang/Object;
.source "VoucherMetadataRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherMetadataRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherMetadataRepositoryImpl.kt\ncom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion\n*L\n1#1,139:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;-><init>()V

    return-void
.end method

.method private final createRepository(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;)Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;
    .locals 7

    .line 124
    new-instance v6, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;

    .line 125
    sget-object v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->Companion:Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;->getInstance$default(Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;Landroid/content/Context;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;ILjava/lang/Object;)Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->voucherMetadataDao()Lcom/audible/license/repository/db/VoucherMetadataDao;

    move-result-object v1

    const/4 v4, 0x4

    move-object v0, v6

    move-object v2, p2

    .line 124
    invoke-direct/range {v0 .. v5}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDao;Lcom/audible/mobile/identity/IdentityManager;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method private final createRepository(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;
    .locals 7

    .line 134
    new-instance v6, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;

    .line 135
    sget-object v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->Companion:Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;

    invoke-virtual {v0, p1, p3, p4}, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;->getInstance(Landroid/content/Context;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->voucherMetadataDao()Lcom/audible/license/repository/db/VoucherMetadataDao;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDao;Lcom/audible/mobile/identity/IdentityManager;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;)Lcom/audible/license/repository/db/VoucherMetadataRepository;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->access$getINSTANCE$cp()Lcom/audible/license/repository/db/VoucherMetadataRepository;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->access$getINSTANCE$cp()Lcom/audible/license/repository/db/VoucherMetadataRepository;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->Companion:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;

    invoke-direct {v0, p1, p2}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;->createRepository(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;)Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->access$setINSTANCE$cp(Lcom/audible/license/repository/db/VoucherMetadataRepository;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 105
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getInstance(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataRepository;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesDir"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->access$getINSTANCE$cp()Lcom/audible/license/repository/db/VoucherMetadataRepository;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->access$getINSTANCE$cp()Lcom/audible/license/repository/db/VoucherMetadataRepository;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->Companion:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;->createRepository(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->access$setINSTANCE$cp(Lcom/audible/license/repository/db/VoucherMetadataRepository;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 116
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
