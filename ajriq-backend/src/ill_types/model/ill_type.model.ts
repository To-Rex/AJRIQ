import { DataTypes } from 'sequelize';
import { Column, Model, Table } from 'sequelize-typescript';

interface illTypeAttrs {
  id: string;
  title: string;
  description: string;
}

@Table({ tableName: 'ill_types' })
export class IllType extends Model<IllType, illTypeAttrs> {
  @Column({
    primaryKey: true,
    autoIncrement: true,
    type: DataTypes.INTEGER,
  })
  id: number;

  @Column({
    type: DataTypes.STRING(120),
    allowNull: false,
  })
  title: string;

  @Column({
    type: DataTypes.STRING(1200),
    allowNull: false,
    unique: true,
  })
  description: string;
}
