import { DataTypes } from 'sequelize';
import { Column, Model, Table } from 'sequelize-typescript';

interface medAttrs {
  id: string;
  title: string;
  code: string;
  description: string;
}

@Table({ tableName: 'meds' })
export class Med extends Model<Med, medAttrs> {
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
    type: DataTypes.STRING(120),
    allowNull: false,
    unique: true,
  })
  code: string;

  @Column({
    type: DataTypes.STRING(1200),
    allowNull: false,
    unique: true,
  })
  description: string;
}
