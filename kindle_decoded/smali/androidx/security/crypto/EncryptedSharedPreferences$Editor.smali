.class final Landroidx/security/crypto/EncryptedSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "EncryptedSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Editor"
.end annotation


# instance fields
.field private mClearRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

.field private final mKeysChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/security/crypto/EncryptedSharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptedSharedPreferences",
            "editor"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mClearRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 226
    iput-object p1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    .line 227
    iput-object p2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 228
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    return-void
.end method

.method private clearKeysIfNeeded()V
    .locals 4

    .line 357
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mClearRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    .line 360
    invoke-virtual {v2, v1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-virtual {v3, v1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyListeners()V
    .locals 5

    .line 386
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    iget-object v0, v0, Landroidx/security/crypto/EncryptedSharedPreferences;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 387
    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 388
    iget-object v4, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private putEncryptedObject(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-virtual {v0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    const-string p1, "__NULL__"

    .line 376
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    .line 377
    invoke-virtual {v0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKeyValuePair(Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object p1

    .line 378
    iget-object p2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 380
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not encrypt data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 369
    :cond_1
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a reserved key for the encryption keyset."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 348
    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->clearKeysIfNeeded()V

    .line 349
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->notifyListeners()V

    .line 351
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 331
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mClearRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public commit()Z
    .locals 2

    .line 337
    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->clearKeysIfNeeded()V

    .line 339
    :try_start_0
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->notifyListeners()V

    .line 342
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return v0

    :catchall_0
    move-exception v0

    .line 341
    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->notifyListeners()V

    .line 342
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 343
    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/4 v0, 0x5

    .line 307
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 308
    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->BOOLEAN:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 309
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/16 v0, 0x8

    .line 297
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 298
    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->FLOAT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 299
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/16 v0, 0x8

    .line 277
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 278
    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->INT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 279
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 280
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/16 v0, 0xc

    .line 287
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->LONG:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 290
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "__NULL__"

    .line 237
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 238
    array-length v0, p2

    add-int/lit8 v1, v0, 0x8

    .line 239
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 241
    sget-object v2, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v2}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 242
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 244
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 253
    new-instance p2, Landroidx/collection/ArraySet;

    invoke-direct {p2}, Landroidx/collection/ArraySet;-><init>()V

    const-string v0, "__NULL__"

    .line 254
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 258
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 260
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x4

    .line 264
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 265
    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING_SET:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 267
    array-length v2, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-virtual {v0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-virtual {v1, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a reserved key for the encryption keyset."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
