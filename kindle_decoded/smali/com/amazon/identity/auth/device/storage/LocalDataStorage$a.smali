.class Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/storage/LocalDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".db"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const-string v0, "LocalDataStorage"

    const-string v1, "Creating Local DataStore"

    .line 117
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    new-instance v0, Lcom/amazon/identity/auth/device/dz;

    const-string v1, "accounts"

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/dz;-><init>(Ljava/lang/String;)V

    const-string v1, "INTEGER PRIMARY KEY AUTOINCREMENT"

    const-string v2, "_id"

    .line 1146
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v3, "directed_id"

    const-string v4, "TEXT UNIQUE NOT NULL"

    .line 1147
    invoke-virtual {v0, v3, v4}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v3, "display_name"

    const-string v4, "TEXT UNIQUE"

    .line 1148
    invoke-virtual {v0, v3, v4}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v3, "INTEGER NOT NULL"

    const-string v4, "account_timestamp"

    .line 1149
    invoke-virtual {v0, v4, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v4, "account_deleted"

    .line 1150
    invoke-virtual {v0, v4, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v4, "account_dirty"

    .line 1151
    invoke-virtual {v0, v4, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1156
    new-instance v0, Lcom/amazon/identity/auth/device/dz;

    const-string/jumbo v4, "userdata"

    invoke-direct {v0, v4}, Lcom/amazon/identity/auth/device/dz;-><init>(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v4, "userdata_account_id"

    const-string v5, "TEXT NOT NULL"

    .line 1158
    invoke-virtual {v0, v4, v5}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v6, "userdata_key"

    .line 1159
    invoke-virtual {v0, v6, v5}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v7, "TEXT"

    const-string/jumbo v8, "userdata_value"

    .line 1160
    invoke-virtual {v0, v8, v7}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v8, "userdata_timestamp"

    .line 1161
    invoke-virtual {v0, v8, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v8, "userdata_deleted"

    .line 1162
    invoke-virtual {v0, v8, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v8, "userdata_dirty"

    .line 1163
    invoke-virtual {v0, v8, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v6, v9, v4

    const-string v6, "UNIQUE(%s,%s)"

    .line 1164
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/amazon/identity/auth/device/dz;->bv(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1169
    new-instance v0, Lcom/amazon/identity/auth/device/dz;

    const-string/jumbo v9, "tokens"

    invoke-direct {v0, v9}, Lcom/amazon/identity/auth/device/dz;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v9, "token_account_id"

    .line 1171
    invoke-virtual {v0, v9, v5}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v11, "token_key"

    .line 1172
    invoke-virtual {v0, v11, v5}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v12, "token_value"

    .line 1173
    invoke-virtual {v0, v12, v7}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v12, "token_timestamp"

    .line 1174
    invoke-virtual {v0, v12, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v12, "token_deleted"

    .line 1175
    invoke-virtual {v0, v12, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string/jumbo v12, "token_dirty"

    .line 1176
    invoke-virtual {v0, v12, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v9, v12, v10

    aput-object v11, v12, v4

    .line 1177
    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/amazon/identity/auth/device/dz;->bv(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1182
    new-instance v0, Lcom/amazon/identity/auth/device/dz;

    const-string v9, "device_data"

    invoke-direct {v0, v9}, Lcom/amazon/identity/auth/device/dz;-><init>(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v1, "device_data_namespace"

    .line 1184
    invoke-virtual {v0, v1, v5}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v2, "device_data_key"

    .line 1185
    invoke-virtual {v0, v2, v5}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v5, "device_data_value"

    .line 1186
    invoke-virtual {v0, v5, v7}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v5, "device_data_timestamp"

    .line 1187
    invoke-virtual {v0, v5, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v5, "device_data_deleted"

    .line 1188
    invoke-virtual {v0, v5, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    const-string v5, "device_data_dirty"

    .line 1189
    invoke-virtual {v0, v5, v3}, Lcom/amazon/identity/auth/device/dz;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v10

    aput-object v2, v3, v4

    .line 1190
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/dz;->bv(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dz;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRAGMA foreign_keys=ON;"

    .line 131
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 138
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 140
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "Cannot upgrade from version %d to %d"

    .line 138
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
