.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TransferDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "awss3transfertable.db"

.field private static final DATABASE_VERSION:I = 0x6


# instance fields
.field private version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x6

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "awss3transfertable.db"

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    iput p2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->version:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->version:I

    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 48
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
