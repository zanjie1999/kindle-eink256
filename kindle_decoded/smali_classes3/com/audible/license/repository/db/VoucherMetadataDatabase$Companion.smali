.class public final Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;
.super Ljava/lang/Object;
.source "VoucherMetadataDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/license/repository/db/VoucherMetadataDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherMetadataDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherMetadataDatabase.kt\ncom/audible/license/repository/db/VoucherMetadataDatabase$Companion\n*L\n1#1,61:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;-><init>()V

    return-void
.end method

.method private final buildDatabase(Landroid/content/Context;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataDatabase;
    .locals 2

    const-string v0, "voucher_attributes.db"

    if-eqz p2, :cond_0

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 42
    const-class p2, Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    .line 40
    invoke-static {p1, p2, v0}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelperFactory;

    invoke-direct {p2}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelperFactory;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;

    const/4 p2, 0x1

    new-array p2, p2, [Landroidx/room/migration/Migration;

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;->getMIGRATION_1_2$audible_android_cdn_release()Landroidx/room/migration/Migration;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    const-string p2, "Room.databaseBuilder(\n  \u2026Migrations(MIGRATION_1_2)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 48
    invoke-virtual {p1, p3}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    return-object p1
.end method

.method public static synthetic getInstance$default(Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;Landroid/content/Context;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;ILjava/lang/Object;)Lcom/audible/license/repository/db/VoucherMetadataDatabase;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 28
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;->getInstance(Landroid/content/Context;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataDatabase;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->access$getINSTANCE$cp()Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->access$getINSTANCE$cp()Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->Companion:Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;

    invoke-direct {v0, p1, p2, p3}, Lcom/audible/license/repository/db/VoucherMetadataDatabase$Companion;->buildDatabase(Landroid/content/Context;Ljava/io/File;Landroidx/room/RoomDatabase$Callback;)Lcom/audible/license/repository/db/VoucherMetadataDatabase;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->access$setINSTANCE$cp(Lcom/audible/license/repository/db/VoucherMetadataDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 30
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getMIGRATION_1_2$audible_android_cdn_release()Landroidx/room/migration/Migration;
    .locals 1

    .line 54
    invoke-static {}, Lcom/audible/license/repository/db/VoucherMetadataDatabase;->access$getMIGRATION_1_2$cp()Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method
