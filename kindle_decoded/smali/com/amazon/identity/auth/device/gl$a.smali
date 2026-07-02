.class Lcom/amazon/identity/auth/device/gl$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final ox:Lcom/amazon/identity/auth/device/gm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/gm;)V
    .locals 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 97
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Constructing LocalDataStorageDBHelper"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 99
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".db exists: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object p3, p0, Lcom/amazon/identity/auth/device/gl$a;->ox:Lcom/amazon/identity/auth/device/gm;

    return-void
.end method

.method private static fF()Lcom/amazon/identity/auth/device/dz;
    .locals 4

    .line 196
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating EncryptionSecret table in LocalDataStorageV2 database"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/amazon/identity/auth/device/dz;

    const-string v1, "encryption_data"

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/dz;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v1, "TEXT NOT NULL"

    const-string v2, "encryption_data_key"

    .line 199
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v3, "encryption_data_value"

    .line 200
    invoke-virtual {v0, v3, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UNIQUE(%s)"

    .line 201
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/dz;->bv(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .line 106
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LocalDataStorageV2 Database"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating Accounts table in LocalDataStorageV2 database"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    new-instance v0, Lcom/amazon/identity/auth/device/dz;

    const-string v1, "accounts"

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/dz;-><init>(Ljava/lang/String;)V

    const-string v1, "INTEGER PRIMARY KEY AUTOINCREMENT"

    const-string v2, "_id"

    .line 1163
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v3, "directed_id"

    const-string v4, "TEXT UNIQUE NOT NULL"

    .line 1164
    invoke-virtual {v0, v3, v4}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v3, "TEXT NOT NULL"

    const-string v4, "display_name"

    .line 1165
    invoke-virtual {v0, v4, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1170
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Creating AccountData table in LocalDataStorageV2 database"

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    new-instance v0, Lcom/amazon/identity/auth/device/dz;

    const-string v4, "account_data"

    invoke-direct {v0, v4}, Lcom/amazon/identity/auth/device/dz;-><init>(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v4, "account_data_directed_id"

    .line 1173
    invoke-virtual {v0, v4, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v5, "account_data_key"

    .line 1174
    invoke-virtual {v0, v5, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v6, "BLOB"

    const-string v7, "account_data_value"

    .line 1175
    invoke-virtual {v0, v7, v6}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    aput-object v5, v8, v4

    const-string v5, "UNIQUE(%s,%s)"

    .line 1176
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/amazon/identity/auth/device/dz;->bv(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Creating DeviceData table in LocalDataStorageV2 database"

    invoke-static {v0, v8}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    new-instance v0, Lcom/amazon/identity/auth/device/dz;

    const-string v8, "device_data"

    invoke-direct {v0, v8}, Lcom/amazon/identity/auth/device/dz;-><init>(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v1, "device_data_namespace"

    .line 1186
    invoke-virtual {v0, v1, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v2, "device_data_key"

    .line 1187
    invoke-virtual {v0, v2, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v3, "device_data_value"

    .line 1188
    invoke-virtual {v0, v3, v6}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v9

    aput-object v2, v3, v4

    .line 1189
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/dz;->bv(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/amazon/identity/auth/device/gl$a;->fF()Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/amazon/identity/auth/device/cr;->co()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl$a;->ox:Lcom/amazon/identity/auth/device/gm;

    const-string v1, "com.amazon.identity.auth.device.storage.LocalOnlySQLDB.encrypt.key"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 122
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRAGMA foreign_keys=ON;"

    .line 124
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAP database version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .line 132
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 135
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const-string p3, "MAP database upgrades from version %d to %d"

    .line 132
    invoke-static {v1, p3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v3, :cond_1

    .line 141
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SharedPreference to database migrating on "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MAPCentralDBSharePrefMigration"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/amazon/identity/auth/device/gl$a;->fF()Lcom/amazon/identity/auth/device/dz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/dz;->dP()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/amazon/identity/auth/device/gl;->g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 147
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Secret is not available on database, migrating.."

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gl$a;->ox:Lcom/amazon/identity/auth/device/gm;

    const-string p3, "com.amazon.identity.auth.device.storage.LocalOnlySQLDB.encrypt.key"

    invoke-virtual {p2, p3}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 149
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Successfully migrate the shared preference."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/gl;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
